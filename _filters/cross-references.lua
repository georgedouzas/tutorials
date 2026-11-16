-- Turns a reference to a label on another page into a link, using _filters/cross-references.json. The index is
-- split into groups of tutorials that link to each other (physics, machine learning); a page looks labels up only in
-- the group of its own tutorial, so a label defined in both groups resolves within the reader's group.
-- An index entry names the tutorial (`post`) and the page inside it (`page`, e.g. `classical-mechanics/index.html`).
local index = nil

-- the page being rendered, relative to the project root, split into its path components
local function parts()
  local root = (quarto.project and quarto.project.directory) or "."
  local rel = pandoc.path.make_relative(quarto.doc.input_file, root)
  local out = {}
  for p in rel:gmatch("[^/]+") do out[#out + 1] = p end
  return out
end

local function load(tutorial)
  if index then return index end
  local root = (quarto.project and quarto.project.directory) or "."
  local f = io.open(pandoc.path.join({root, "_filters", "cross-references.json"}), "r")
  if not f then error("_filters/cross-references.json not found") end
  local text = f:read("a"); f:close()
  index = {}
  for _, group in pairs(quarto.json.decode(text).groups) do
    for _, t in ipairs(group.tutorials) do
      if t == tutorial then index = group.labels end
    end
  end
  return index
end

function Cite(el)
  local p = parts()
  local tutorial = p[1]
  local page = table.concat(p, "/", 2):gsub("%.qmd$", ".html")
  local up = string.rep("../", #p - 1)          -- from the page's folder back to the project root
  local labels = load(tutorial)
  local out = pandoc.Inlines({})
  local changed = false
  for i, c in ipairs(el.citations) do
    local target = labels[c.id]
    if i > 1 then out:insert(pandoc.Str(";")); out:insert(pandoc.Space()) end
    if target and not (target.post == tutorial and target.page == page) then
      changed = true
      local href = up .. target.post .. "/" .. target.page .. "#" .. c.id
      out:insert(pandoc.Link(pandoc.Inlines({pandoc.Str(target.text)}), href))
    else
      out:insert(pandoc.Cite(pandoc.Inlines({pandoc.Str("@" .. c.id)}), {c}))
    end
  end
  if changed then return out end
end
