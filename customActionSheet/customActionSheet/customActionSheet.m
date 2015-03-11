//
//  customActionSheet.m
//  customActionSheet
//
//  Created by Robert on 15/3/11.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "customActionSheet.h"

#define CUSTOMVIEWHEIGHT 30

@interface customActionSheet ()

@end

@implementation customActionSheet

-(instancetype)initWithTitle:(NSString *)title delegate:(id<UIActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...{
    self = [super initWithTitle:title delegate:delegate cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if (self) {
        UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - CUSTOMVIEWHEIGHT, 320, CUSTOMVIEWHEIGHT)];
        customView.backgroundColor = [UIColor redColor];
        [self addSubview:customView];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    UIView *view = [[UIView alloc] initWithFrame:self.bounds];
    view.backgroundColor = [UIColor redColor];
    [self addSubview:view];
}

@end
