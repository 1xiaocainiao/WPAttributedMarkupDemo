//
//  ViewController.m
//  WPAttributedMarkupDemo
//
//  Created by Nigel Grange on 15/10/2014.
//  Copyright (c) 2014 Nigel Grange. All rights reserved.
//

#import <CoreText/CoreText.h>

#import "ViewController.h"
#import "NSString+WPAttributedMarkup.h"

#import "WPAttributedStyleAction.h"
#import "WPHotspotLabel.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    NSDictionary* style2 = @{@"body" :
                                 @[[UIFont systemFontOfSize:18 weight: UIFontWeightBold],
                                   [UIColor darkGrayColor]],
                                @"u": @[[UIColor blueColor],
                                    @{NSUnderlineStyleAttributeName : @(kCTUnderlineStyleSingle|kCTUnderlinePatternSolid)}
                                     ],
                                @"thumb":[UIImage imageNamed:@"thumbIcon"] };
    
    NSDictionary* style3 = @{@"body":[UIFont systemFontOfSize:22 weight: UIFontWeightSemibold],
                             @"help":[WPAttributedStyleAction styledActionWithAction:^{
                                 NSLog(@"Help action");
                             }],
                             @"settings":[WPAttributedStyleAction styledActionWithAction:^{
                                 NSLog(@"Settings action");
                             }],
                             @"link": [UIColor orangeColor]};
    
  
//    self.label1.attributedText = [@"Attributed <bold>Bold</bold> <red>Red</red> text" attributedStringWithStyleBook:style1];
    self.label2.attributedText = [@"<thumb> </thumb> Multiple <u>styles</u> text <thumb> </thumb>" attributedStringWithStyleBook:style2];
//    self.label3.attributedText = [@"Tap <help>here</help> to show help or <settings>here</settings> to show settings" attributedStringWithStyleBook:style3];
    self.label3.attributedText = [@"Tap <help>here</help> to s" attributedStringWithStyleBook:style3];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
