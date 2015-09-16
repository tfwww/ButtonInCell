//
//  TableViewController.h
//  ButtonCell
//
//  Created by Wunmin on 15/9/2.
//  Copyright (c) 2015年 Wunmin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImageItemView.h"

@interface TableViewController : NSViewController <NSTableViewDataSource, NSTableViewDelegate> {
    
    NSArray *array;
    ImageItemView *itemView;
}

@end
