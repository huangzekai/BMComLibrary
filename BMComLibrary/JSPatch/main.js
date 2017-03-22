//defineClass("ViewController",{
//    
//    tableView_didSelectRowAtIndexPath: function(tableView, indexPath){
//        var row = indexPath.row()
//        if(self.arrTest().length > row)
//        {
//            var name = self.arrTest()[row];
//            var controller = UIViewController.alloc().init();
//            controller.title = name;
//            self.navigationController().pushViewController(controller);
//        }
//    }
//})






//defineClass('ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>', {
//    tableView_didSelectRowAtIndexPath: function(tableView, indexPath)
//    {
//        var row = indexPath.row()
//        if (self.arrTest().length > row)
//        {  //加上判断越界的逻辑
////            var content = self.arrTest()[row];
//            var controller = UIViewController.alloc().init();
////            self.navigationController().pushViewController(controller);
//            self.navigationController().pushViewController_animated(controller, YES)
//        }
//    }
//})