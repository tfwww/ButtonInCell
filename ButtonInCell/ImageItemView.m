//
//  ImageItemView.m
//  ButtonCell
//
//  Created by Wunmin on 15/9/2.
//  Copyright (c) 2015年 Wunmin. All rights reserved.
//

#import "ImageItemView.h"

@implementation ImageItemView


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor whiteColor] set];
    [NSBezierPath fillRect:dirtyRect];
}

- (void)awakeFromNib {
    
    buttonsMatrix = [[NSMatrix alloc] initWithFrame:[self frame]
                                               mode:NSRadioModeMatrix
                                          cellClass:[NSButtonCell class]
                                       numberOfRows:1
                                    numberOfColumns:0];
//    buttonsMatrix = [[NSMatrix alloc] initWithFrame:[self frame]];
//    [buttonsMatrix setMode:NSRadioModeMatrix];
//    [buttonsMatrix setCellClass:[NSButtonCell class]];
    
    [buttonsMatrix setAllowsEmptySelection:YES];
    [buttonsMatrix setCellSize:NSMakeSize(90, [self bounds].size.height)];
    NSLog(@"bounds width: %f height: %f", [self bounds].size.width, [self bounds].size.height);
    [self addSubview:buttonsMatrix];
    
    [self addButtonCellWithImage:[NSImage imageNamed:@"reply"]
                      alternateImage:[NSImage imageNamed:@"reply"]];
    [self addButtonCellWithImage:[NSImage imageNamed:@"reply"]
                  alternateImage:[NSImage imageNamed:@"reply"]];
    [self addButtonCellWithImage:[NSImage imageNamed:@"reply"]
                  alternateImage:[NSImage imageNamed:@"reply"]];
    [self addButtonCellWithImage:[NSImage imageNamed:@"reply"]
                  alternateImage:[NSImage imageNamed:@"reply"]];
}

- (void)addButtonCell:(NSButtonCell *)cell {
    
    [buttonsMatrix addColumnWithCells:@[ cell ]];
}

- (NSButtonCell *)addButtonCellWithImage:(NSImage *)image alternateImage:(NSImage *)altImage {
    
    NSButtonCell *cell = [[NSButtonCell alloc] initImageCell:image];
    [cell setAlternateImage:altImage];
    [self addButtonCell:cell];
    
    return cell;
}

@end
