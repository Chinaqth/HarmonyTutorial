import CommonConstants from '../common/constants/CommonConstants'
import { Home } from '../common/Home'
@Entry
@Component
struct MainPage {
  @State message: string = 'Hello World'
  @State currentIndex: number = 0
  private tabController = new TabsController()

  @Builder TabBuilder(title: string, index: number, defaultImage: Resource, selectImage: Resource) {
    Column() {
      Image(this.currentIndex == index ? selectImage : defaultImage)
        .width(25)
        .height(25)
      Text(title)
        .fontSize($r('app.float.main_tab_fontSize'))
        .fontColor(this.currentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
        .margin(4)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height(50)
    .onClick(() => {
      this.currentIndex = index
      this.tabController.changeIndex(this.currentIndex)
    })
  }

  build() {
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabController
    }) {
      TabContent() {
        Home()
      }.tabBar(this.TabBuilder(CommonConstants.HOME_TITLE, CommonConstants.HOME_TAB_INDEX,
        $r('app.media.home_normal'), $r('app.media.home_selected')))

      TabContent() {

      }
      .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, CommonConstants.MINE_TAB_INDEX,
        $r('app.media.mine_normal'), $r('app.media.mine_selected')))
    }
    .width('100%')
    .height('100%')
  }
}