//
//  TableViewController.m
//  ButtonCell
//
//  Created by Wunmin on 15/9/2.
//  Copyright (c) 2015年 Wunmin. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)awakeFromNib {

    [self giveObjectsToArray];
}

- (void)giveObjectsToArray {
    
    array = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];

}

#pragma mark - Table View Data Source

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView {
    
    return [array count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
    
    return [array objectAtIndex:rowIndex];
}

#pragma mark - Table View Delegate

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    NSString *identifier = [tableColumn identifier];
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:identifier owner:self];
    
    [cellView.textField setStringValue:[array objectAtIndex:row]];
    return cellView;
}

@end
