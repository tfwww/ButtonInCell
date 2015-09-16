//
//  ImageItemView.h
//  ButtonCell
//
//  Created by Wunmin on 15/9/2.
//  Copyright (c) 2015年 Wunmin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ImageItemView : NSView {

    NSMatrix *buttonsMatrix;
}

- (NSButtonCell *)addButtonCellWithImage:(NSImage *)image alternateImage:(NSImage *)altImage;

@end
