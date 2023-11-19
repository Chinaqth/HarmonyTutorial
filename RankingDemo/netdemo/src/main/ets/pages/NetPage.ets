import { httpRequestGet } from '../utils/HttpCaller'
import { ResponseResult } from '../viewmodel/ResponseResult'
import { CommonConstant as Const } from '../constant/CommonConstant';
import Logger from '../utils/Logger';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  aboutToAppear() {
    Logger.debug('QQQ aboutToAppear')
    httpRequestGet(`${Const.SERVER}/${Const.GET_NEWS_TYPE}`)
  }
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}