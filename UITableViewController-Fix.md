# Issue-Fixes
The UITableViewController fix

Issue:-

If you are using a UITableViewController in iOS 11, the table view's view will extend even behind the safe are as in the
entire screen so to fix this i first used contentInset as so:- (for the bottom bar)

```
if #available(iOS 11.0, *) {
  self.contentInset = UIEdgeInsetsMake(0, 0, -UIApplication.shared.keyWindow!.safeAreaInsets.bottom, 0)
}
        
````
now that you have the bottom bar handled the next problem is the actual content size that you have to use i.e without nav bar,
status bar etc and that you get by my UItableView+Additions class.I use it like so

```
override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
   return self.presenterDelegate?.height(indexPath: indexPath, viewFrame: self.tableView.contentFrame()) ?? 0
}

```

where tableView.contentFrame() will give the actual usable frame that i can use to divide my layout and assign heights to each
row
