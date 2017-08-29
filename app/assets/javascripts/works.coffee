simplemde = null

cleanupSimpleMDE = ->
    if simplemde?
        simplemde.toTextArea()
        simplemde = null

$(window).on 'popstate', cleanupSimpleMDE
$(document).on 'turbolinks:before-visit', cleanupSimpleMDE

$(document).on "turbolinks:load", ->
    simplemde = new SimpleMDE()
