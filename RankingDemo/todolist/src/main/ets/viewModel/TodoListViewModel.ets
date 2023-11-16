export class TodoListViewModel {
  private  total_Tasks:Array<string> = [
    '早起晨练',
    '准备早餐',
    '阅读名著',
    '学习ArkTS',
    '看剧放松'
  ]

  loadData() :Array<string> {
    return this.total_Tasks
  }
}