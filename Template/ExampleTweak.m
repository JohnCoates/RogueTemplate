//
//  ExampleTweak.m
//  Created on 5/13/20
//

@import os.log;
@import Rogue;
@import UIKit;

#import "ExampleTweak.h"

static os_log_t _log;

@interface ExampleTweak ()
@property (nonatomic) UILabel *_timeLabel;

@end

@implementation ExampleTweak

+ (void)load {
    _log = os_log_create("com.rogue.tweak", "log");
    os_log(_log, "ExampleTweak injected into %@", NSProcessInfo.processInfo.arguments[0]);
}

+ (NSString *)targetClass {
    return @"SBFLockScreenDateView";
}

- (void)layoutSubviews {
    [self.original layoutSubviews];
    self.backgroundColor = [UIColor.blueColor colorWithAlphaComponent:0.43];
}

@end
