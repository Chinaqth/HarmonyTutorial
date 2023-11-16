import { TodoItem } from '../view/TodoItem'
import { TodoListViewModel } from '../viewModel/TodoListViewModel'

@Entry
@Component
struct ToDoList {
  mViewModel = new TodoListViewModel()
  todos: Array<string> = this.mViewModel.loadData()

  build() {
    Column({ space: 20 }) {
      Text($r('app.string.todo'))
        .fontColor(Color.Black)
        .fontWeight(FontWeight.Bold)
        .fontSize(35)
        .textAlign(TextAlign.Start)
        .margin({ left: 10 })
      ForEach(this.todos, (item: string) => {
        TodoItem({ todo: item })
      }, (item: string) => JSON.stringify(item))
    }
    .padding({
      left: 20,
      right: 20,
      top: 20,
      bottom: 20
    })
    .alignItems(HorizontalAlign.Start)
    .height('100%')
    .width('100%')
    .backgroundColor($r('app.color.page_background'))
  }
}