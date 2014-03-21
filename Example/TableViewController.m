#import "TableViewController.h"

@interface TableViewController () {
    @private
    NSArray *arrayNotes;
}
    
@end


@implementation TableViewController

#pragma mark - UIViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    arrayNotes = [Client selectAllNotes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) return [[Client selectAllNotes] count];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    NSDictionary *dictionary = [arrayNotes objectAtIndex:[indexPath row]];

    if ([indexPath section] == 0) {
        [[cell textLabel] setText:[dictionary objectForKey:@"name_notes"]];
        [[cell detailTextLabel] setText:[dictionary objectForKey:@"date_notes"]];
        return cell;
    }
    return nil;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
