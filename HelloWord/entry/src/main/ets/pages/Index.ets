@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('Click')
            .fontSize(30)
            .padding({left:20,right:20})
            .fontWeight(FontWeight.Bold)
        }.margin({top:20})
      }
      .width('100%')
    }
    .height('100%')
  }
}