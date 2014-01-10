#import <UIKit/UIKit.h>
#import "Client.h"

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    @private
}

#pragma mark - UITableView
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
