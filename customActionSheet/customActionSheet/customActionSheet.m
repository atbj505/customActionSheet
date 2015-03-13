//
//  customActionSheet.m
//  customActionSheet
//
//  Created by Robert on 15/3/11.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "customActionSheet.h"

@interface customActionSheet ()

@end

@implementation customActionSheet

- (id)initWithTitle:(NSString *)title delegate:(id<IBActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelTitle destructiveButtonTitle:(NSString *)destructiveTitle otherButtonTitles:(NSString *)otherTitles, ... NS_REQUIRES_NIL_TERMINATION {
    
    NSMutableArray *titles = [[NSMutableArray alloc] init];
    
    if (otherTitles) {
        va_list args;
        va_start(args, otherTitles);
        for (NSString *arg = otherTitles; arg != nil; arg = va_arg(args, NSString* ))
        {
            [titles addObject:arg];
        }
        va_end(args);
    }
    return [self initWithTitle:title delegate:delegate cancelButtonTitle:cancelTitle destructiveButtonTitle:destructiveTitle otherButtonTitlesArray:titles];
}

-(id)initWithTitle:(NSString *)title delegate:(id<IBActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelTitle destructiveButtonTitle:(NSString *)destructiveTitle otherButtonTitlesArray:(NSArray *)otherTitlesArray {
    self = [super initWithTitle:title delegate:delegate cancelButtonTitle:cancelTitle destructiveButtonTitle:destructiveTitle otherButtonTitlesArray:otherTitlesArray];
    if (self) {
        self.blurBackground = YES;
        [self setButtonBackgroundColor:[UIColor blackColor]];
        [self setButtonTextColor:[UIColor whiteColor]];
        self.buttonResponse = IBActionSheetButtonResponseHighlightsOnPress;
        [self setButtonHighlightTextColor:[UIColor whiteColor]];
        [self setButtonHighlightBackgroundColor:[UIColor redColor]];
    }
    return self;
}
@end
