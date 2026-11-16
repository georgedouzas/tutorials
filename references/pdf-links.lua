--[[
Link citations to the cited item in the Zotero library.

A citation to an entry of references.bib with a `zotero` field (the Zotero item key) links to that item in the
Zotero web library, which holds the PDF; a page locator such as [@key, p. 23] stays in the citation text. The
bibliography citeproc builds is removed, so chapters print only in-text citations, and a citation to an entry
without a Zotero key is left as plain text. (With
suppress-bibliography, citeproc makes no citation links at all, hence building and then removing it.)

Runs at post-quarto (after Quarto resolves cross-references) and processes citations itself, so each tutorial
sets `citeproc: false`.
]]

local ZOTERO = "https://www.zotero.org/users/10473561/items/"
local items = {}

local function load_bib()
  local dir = (quarto and quarto.project and quarto.project.directory) or "."
  local f = io.open(dir .. "/references/references.bib", "r")
  if not f then return end
  local text = f:read("a")
  f:close()
  for key, body in text:gmatch("@%w+%s*{%s*([^,%s]+)%s*,(.-)\n}") do
    local item = body:match("\n%s*zotero%s*=%s*{([^}]*)}")
    if item then items[key] = item end
  end
end

local function href(key)
  return ZOTERO .. items[key]
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
          if not items[key] then return link.content end
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
