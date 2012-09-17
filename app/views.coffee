@include = ->


  ############# break and split ###############

  @view breaknsplit : ->


    style '@import url("css/charts/time-series.css");'
    style '@import url("css/breaknsplit.css");'
    script src: 'coffee/charts/time-series.js'
    script src: 'coffee/utils-aiddata.js'
    script src: 'coffee/utils.js'
    script src: 'queue.js'
    script src: 'libs/chroma/chroma.min.js'
    script src: 'libs/chroma/chroma.colors.js'
    script src: 'coffee/breaknsplit.js'


    div class:"row-fluid", ->

      table ->
        td class:"backForwardBtns", ->
          div class:"btn-toolbar", ->
            div class:"btn-group", ->
              button id:"backButton",class:"btn btn-mini", disabled:"disabled", ->
                i class:"icon-chevron-left"
              button id:"forwardButton",class:"btn btn-mini", disabled:"disabled", ->
                i class:"icon-chevron-right"

        td style:"width:30px", ->
          div id:"loading", -> img src:"images/loading.gif"
        td ->
          div id:"status", class:"alert alert-info"
        td ->
          div id:"error", class:"alert-error alert", ->
            button type:"button", class:"close", 'data-dismiss':"alert", -> "&times;"
            span id:"errorText"

          div id:"warn", class:"alert", ->
            button type:"button", class:"close", 'data-dismiss':"alert", -> "&times;"
            span id:"warningText"


    div id:"content", ->

      div id:"outerTop", ->
        # div class:"row", ->
        #   div class:"span6", ->
        #     div class:"row", ->    
        #       div class:"fltr span2", ->
        #         div class:"hdr", -> "Donors"
        #         select id:"donorsList", size:"10", multiple:"multiple"
        #         div class:"btn-group",->
        #           button class:"btn btn-mini", -> "Filter"
        #           button class:"btn btn-mini",-> "Break&nbsp;down"
        #       div class:"fltr span2", ->
        #         div class:"hdr", -> "Recipients"
        #         select id:"recipientList", size:"10", multiple:"multiple"
        #         div class:"btn-group",->
        #           button class:"btn btn-mini", -> "Filter"
        #           button class:"btn btn-mini", -> "Break&nbsp;down"
        #       div class:"fltr span2", ->
        #         div class:"hdr", -> "Purposes"
        #         select id:"purposeList", size:"10", multiple:"multiple"
        #         div class:"btn-group",->
        #           button class:"btn btn-mini", -> "Filter"
        #           button class:"btn btn-mini", -> "Break&nbsp;down"
          # div class:"span6", ->
          #   div id:"tseries", class:"tseries"
 
        table ->
          tr ->
            td -> div class:"hdr", -> "Donors"
            td -> div class:"hdr", -> "Recipients"
            td -> div class:"hdr", -> "Purposes"
            td rowspan:"2", -> 
              div id:"tseries", class:"tseries"

          tr ->
            td -> select id:"donorList", class:"filter", 'data-prop':"donor", size:"10", multiple:"multiple"
            td -> select id:"recipientList", class:"filter",'data-prop':"recipient",  size:"10", multiple:"multiple"
            td -> select id:"purposeList", class:"filter", 'data-prop':"purpose", size:"10", multiple:"multiple"

          tr class:"ctls",->
            td ->
                div class:"btn-group filter",'data-prop':"donor",->
                  button class:"filter btn btn-mini", 'data-prop':"donor", -> "Filter"
                  button class:"resetFilter btn btn-mini", 'data-prop':"donor", -> "&times;"
                div class:"btn-group breakDown",'data-prop':"donor",->
                  button class:"breakDown btn btn-mini",'data-prop':"donor", -> "Break&nbsp;down"
                  button class:"resetBreakDown btn btn-mini", 'data-prop':"donor", -> "&times;"
            td ->
                div class:"btn-group filter",'data-prop':"recipient",->
                  button class:"filter btn btn-mini",'data-prop':"recipient", -> "Filter"
                  button class:"resetFilter btn btn-mini", 'data-prop':"recipient", -> "&times;"
                div class:"btn-group breakDown",'data-prop':"recipient",->
                  button class:"breakDown btn btn-mini",'data-prop':"recipient", -> "Break&nbsp;down"
                  button class:"resetBreakDown btn btn-mini", 'data-prop':"recipient", -> "&times;"
            td ->
                div class:"btn-group filter",'data-prop':"purpose",->
                  button class:"filter btn btn-mini", 'data-prop':"purpose", -> "Filter"
                  button class:"resetFilter btn btn-mini", 'data-prop':"purpose", -> "&times;"
                div class:"btn-group breakDown",'data-prop':"purpose",->
                  button class:"breakDown btn btn-mini",'data-prop':"purpose", -> "Break&nbsp;down"
                  button class:"resetBreakDown btn btn-mini", 'data-prop':"purpose", -> "&times;"

            td class:"split", ->
              div class:"split btn-group",->
                button id:"split",class:"split btn btn-mini", -> "Split in multiple"
        div id:"splitPanel", class:"tseries"





  
  ############# bubbles ###############

  @view bubbles: ->
    @page = "bubbles"
    @dataset = "aiddata"

    style '@import url("css/charts/bar-hierarchy.css");'
    style '@import url("css/charts/time-series.css");'
    style '@import url("css/charts/time-slider.css");'

    style '@import url("css/charts/bubbles.css");'
    style '@import url("css/bubbles.css");'

    div id:"loading", -> "Loading..."
    div id:"bubblesChart"


    ###
    div id: "yearSliderOuter", ->

      div id:"play", class:"ui-state-default ui-corner-all", ->
          span class:"ui-icon ui-icon-play"

      div id:'yearSliderInner', ->
        div id:'yearSlider'
        div id:'yearTicks'
    ###

    div id:"tseriesPanel"

    div id:"purposeBars"

    div id:"timeSlider"

    style '@import url("libs/tipsy-new/stylesheets/tipsy.css");'
    script src: "libs/tipsy-new/javascripts/jquery.tipsy.js"

    script src: 'js/fit-projection.js'
    script src: 'coffee/utils.js'
    script src: 'coffee/utils-aiddata.js'
    #script src: "coffee/time-slider.js"
    script src: "coffee/charts/bubbles.js"
    script src: "coffee/charts/bar-hierarchy.js"
    script src: "coffee/charts/time-series.js"
    script src: "coffee/charts/time-slider.js"
    script src: "coffee/bubbles.js"








  ############# horizon ###############


  @view horizon: ->
    @page = "horizon"
    
    div id:'horizonParent', ->
      div id:'originsChart',class:'horizonChart'
      div id:'destsChart',class:'horizonChart'

    style '@import url("css/horizon.css");'
    script src: 'queue.min.js'
    script src: 'js/cubism.v1.my.js'
    script src: 'coffee/utils.js'
    #script src: 'js/cubism-aiddata.js'
    script src: 'libs/chroma/chroma.min.js'
    script src: 'libs/chroma/chroma.colors.js'
    script src: 'coffee/horizon-aiddata.js'





  ############# ffprints ###############

  @view ffprints: ->
    @page = "ffprints"
    @dataset = "aiddata"

    style '@import url("css/ffprints.css");'
    div id:"radioset", style:"display:inline-block", ->
      
      span style:"margin-right:10px","Positioning:"

      input name:"nodePositioningMode", id:"useGeoNodePositions", type:"radio", checked:"checked"
      label "for":"useGeoNodePositions", -> "Geo"

      input name:"nodePositioningMode", id:"useForce", type:"radio"
      label "for":"useForce", -> "Pack"

      input name:"nodePositioningMode", id:"useGrid", type:"radio", disabled:"disabled"
      label "for":"useGrid", style:"margin-left:5px", -> "Grid"

      input name:"nodePositioningMode", id:"useAligned", type:"radio", disabled:"disabled"
      label "for":"useAligned", style:"margin-left:5px", -> "Align"

    #div id:'slider', style:'width:300px;display:inline-block; margin-left:20px; margin-top:7px;'
    div id: 'loading', style:'margin-top:20px', -> "Loading view..."
    div id: 'ffprints', style:'margin-top:20px'

    style '@import url("libs/tipsy-new/stylesheets/tipsy.css");'
    script src: "libs/tipsy-new/javascripts/jquery.tipsy.js"

    script src: 'libs/chroma/chroma.min.js'
    script src: 'libs/chroma/chroma.colors.js'
    script src: 'js/fit-projection.js'
    script src: 'coffee/ffprints.js'
    script src: 'coffee/utils.js'

    script src: "coffee/ffprints-#{@dataset}.js"
    






  ############# crossfilter ###############

  @view crossfilter: ->
    @page = "crossfilter"
    @dataset = "aiddata"
    #script src: 'coffee/utils.js'

    style '@import url("css/crossfilter.css");'


    div id: "charts", ->

      
      div id: "year-chart", class: "chart", ->
        div class: "title", -> "Num of commitments by Year"

      div id: "amount-chart", class: "chart", ->
        div class: "title", -> "Commitment amounts"
    
      aside id:"totals", ->
        span id:"active", -> "-"
        span " of "
        span id:"total", -> "-"
        " commitments selected."

      div id:"lists", ->
        div id:"flow-list", class:"list"


    script src: 'crossfilter.js'
    script src: 'underscore.js'
    script src: 'coffee/utils-aiddata.js'
    script src: 'coffee/crossfilter-barchart.js'
    script src: 'coffee/crossfilter-aiddata.js'




  ############# purposeTree ###############

  @view purposeTree: ->
    @page = "purposeTree"

    style '@import url("css/purpose-tree.css");'
    div id:"purposeTree"

    script src: 'libs/chroma/chroma.min.js'
    script src: 'coffee/utils.js'
    script src: 'coffee/utils-aiddata.js'
    
    script src: "coffee/purpose-tree.js"




  ############# purposePack ###############

  @view purposePack: ->
    @page = "purposePack"

    style '@import url("css/purpose-pack.css");'
    div id:"purposePack"

    script src: 'coffee/utils.js'
    script src: 'coffee/utils-aiddata.js'
    
    script src: "coffee/purpose-pack.js"





  ############# purposeBars ###############

  @view purposeBars: ->
    @page = "purposeBars"

    style '@import url("css/charts/bar-hierarchy.css");'

    div id:"purposeBars"

    script src: 'coffee/utils.js'
    script src: 'coffee/utils-aiddata.js'
    
    script src: "coffee/charts/bar-hierarchy.js"
    script src: "purpose-bars.js"


  @coffee '/purpose-bars.js': ->
    $ ->
      percentageFormat = d3.format(",.2%")

      chart = barHierarchyChart()
        .width(550)
        .height(300)
        .childrenAttr("values")
        .valueAttr("amount")
        .nameAttr("key")
        .valueFormat(formatMagnitude)
        .breadcrumbText(
          (currentNode) ->
            data = currentNode; (data = data.parent) while data.parent?
            formatMagnitude(currentNode.amount) + " (" + 
            percentageFormat(currentNode.amount / data.amount) + " of total)"
        )


      d3.csv "aiddata-purposes-with-totals.csv/2007", (csv) ->
        d3.select("#purposeBars")
          .datum(utils.aiddata.purposes.fromCsv(csv))
          .call(chart)

    










  ############# US donations vs GDP ###############

  @view "us-donations": ->
    style '@import url("css/charts/time-series.css");'

    div id:"tseries2", class:"tseries", style:"margin-bottom:40px"
    div id:"tseries3", class:"tseries", style:"margin-bottom:40px"
    div id:"tseries1", class:"tseries", style:"margin-bottom:40px"

    script src: "coffee/charts/time-series.js"
    script src: 'coffee/utils.js'
    script src: 'coffee/utils-aiddata.js'
    script src: "coffee/us-donations.js"

