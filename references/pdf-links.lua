--[[
Link citations to the cited PDF in references/.

A citation to an entry of references.bib with a `file` field links to that PDF; a page locator such as
[@key, p. 23] stays in the citation text. The bibliography citeproc builds is removed, so chapters print
only in-text citations, and a citation to an entry without a PDF is left as plain text. (With
suppress-bibliography, citeproc makes no citation links at all, hence building and then removing it.)

Runs at post-quarto (after Quarto resolves cross-references) and processes citations itself, so each tutorial
sets `citeproc: false`.
]]

local files = {}

local function load_bib()
  local dir = (quarto and quarto.project and quarto.project.directory) or "."
  local f = io.open(dir .. "/references/references.bib", "r")
  if not f then return end
  local text = f:read("a")
  f:close()
  for key, body in text:gmatch("@%w+%s*{%s*([^,%s]+)%s*,(.-)\n}") do
    local file = body:match("\n%s*file%s*=%s*{([^}]*)}")
    if file then files[key] = file end
  end
end

local function href(key)
  local offset = (quarto and quarto.project and quarto.project.offset) or "."
  return offset .. "/references/" .. files[key]:gsub(" ", "%%20")
end

function Pandoc(doc)
  load_bib()
  doc = pandoc.utils.citeproc(doc)
  return doc:walk({
    Cite = function(cite)
      cite.content = cite.content:walk({
        Link = function(link)
          local key = link.target:match("^#ref%-(.+)$")
          if not key then return nil end
          if not files[key] then return link.content end
          link.target = href(key)
          link.attributes["target"] = "_blank"
          link.attributes["role"] = nil
          return link
        end,
      })
      return cite
    end,
    Div = function(div)
      if div.identifier == "refs" then return {} end
    end,
  })
end
