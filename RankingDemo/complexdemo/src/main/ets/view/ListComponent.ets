import { Data } from '../bean/Data'
import { ListPageViewModel } from '../viewmodel/ListPageViewModel'
import { TargetListItem } from './TragetListItem'

@Component
@Preview
export struct ListComponent {
  private mViewModel = new ListPageViewModel()
  @State data: Array<Data> = this.mViewModel.getData()

  build() {
    Column() {
      List() {
        ForEach(this.data, (item: Data) => {
          ListItem() {
            TargetListItem({ data: item })
          }
        })
      }
      .height('60%')
      .width('100%')
      .edgeEffect(EdgeEffect.None)

      Button('Add Data')
        .margin(30)
        .onClick(() => {
          this.mViewModel.addData(new Data('AAA', 'BBB'))
          this.data = this.mViewModel.getData()
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}