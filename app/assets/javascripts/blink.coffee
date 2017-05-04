class @SubmitController
  submitReady:null
  gpioPinChecked:null
  blinkRateChecked:null
  totalBlinksChecked:null

  constructor: () ->
    @submitReady        = false
    @gpioPinChecked     = false
    @blinkRateChecked   = false
    @totalBlinksChecked = false

    @._initBehavior()

  _initBehavior: ->
    #Listners for user click events
    $(".GPIO-pins").click @handler
    $(".blink-rate").click @handler
    $(".total-blinks").click @handler

  handler: (event) =>
    targetValue =  event.target.value

    if event.currentTarget.classList[0] is "GPIO-pins"
      @gpioPinChecked = true

    if event.currentTarget.classList[0] is "blink-rate"
      @blinkRateChecked = true

    if event.currentTarget.classList[0] is "total-blinks"
      @totalBlinksChecked = true

    if @gpioPinChecked and @blinkRateChecked and @totalBlinksChecked
      $('#blink-led').prop("disabled",false)
      $('#blink-led').css('opacity','1')