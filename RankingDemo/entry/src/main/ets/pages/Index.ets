import { TitleComponent } from '../views/TitleComponent'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column(){
      TitleComponent()
      Text('aaaa')
        .height('100%')
    }

  }
}