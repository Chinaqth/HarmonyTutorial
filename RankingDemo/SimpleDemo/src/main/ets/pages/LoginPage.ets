import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State isShowProgress: boolean = false

  aboutToDisappear() {
    clearTimeout()
  }

  build() {
    Column() {
      Image($r('app.media.logo'))
        .width($r('app.float.logo_image_size'))
        .height($r('app.float.logo_image_size'))
        .margin({
          top: $r('app.float.other_login_margin_top'),
          bottom: $r('app.float.other_login_margin_bottom')
        })
      Text($r('app.string.login_page'))
        .fontSize($r('app.float.page_title_text_size'))
        .fontWeight(FontWeight.Bold)
        .fontColor($r('app.color.title_text_color'))
      Text($r('app.string.login_more'))
        .fontSize($r('app.float.normal_text_size'))
        .fontColor($r('app.color.login_more_text_color'))
        .margin({ bottom: $r('app.float.login_more_margin_bottom'), top: $r('app.float.login_more_margin_top') })
      TextInput({ placeholder: $r('app.string.account') })
        .width('100%')
        .type(InputType.Number)
        .placeholderColor($r('app.color.placeholder_color'))
        .backgroundColor($r('app.color.background'))
      TextInput({ placeholder: $r('app.string.password') })
        .width('100%')
        .type(InputType.Password)
        .placeholderColor($r('app.color.placeholder_color'))
        .backgroundColor($r('app.color.background'))
        .margin({
          top: 30
        })
      Button($r('app.string.login'))
        .width('40%')
        .margin({ top: 100 })
        .onClick(() => {
          this.isShowProgress = true
          setTimeout(() => {
            this.isShowProgress = false
            router.replaceUrl({
              url: 'pages/MainPage'
            })
          },2000)
        })
      if (this.isShowProgress) {
        LoadingProgress()
          .color($r('app.color.loading_color'))
          .width($r('app.float.login_progress_size'))
          .height($r('app.float.login_progress_size'))
          .margin({ top: $r('app.float.login_progress_margin_top') })
      }
    }
    .backgroundColor($r('app.color.background'))
    .height('100%')
    .width('100%')
  }
}