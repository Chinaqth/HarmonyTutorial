import { Data } from '../bean/Data'
import { ListPageViewModel } from '../viewmodel/ListPageViewModel'
import { AddTargetDialog } from './AddTragetDialog'
import { TargetListItem } from './TragetListItem'

@Component
@Preview
export struct ListComponent {
  private mViewModel = new ListPageViewModel()
  @State data: Array<Data> = this.mViewModel.getData()
  @State clickIndex: number = 0
  private dialogController = new CustomDialogController({
    builder: AddTargetDialog({
      cancel: (): void => this.onCancel(),
      confirm: (): void => this.onConfirm()
    }),
    alignment: DialogAlignment.Bottom,
    offset: {
      dx: 0,
      dy: -10
    },
    gridCount: 8
  })

  onCancel() {
    this.dialogController.close()
  }

  onConfirm() {
    this.mViewModel.addData(new Data('AAA', 'BBB'))
    this.data = this.mViewModel.getData()
  }

  build() {
    Column() {
      List() {
        ForEach(this.data, (item: Data, index: number) => {
          ListItem() {
            TargetListItem({
              data: item,
              index: index,
              clickIndex: $clickIndex
            })
          }
        })
      }
      .height('60%')
      .width('100%')
      .edgeEffect(EdgeEffect.None)

      Button('Add Data')
        .margin(30)
        .onClick(() => {
          this.dialogController.open()
        })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}