//
//  WPAttributedSymbolModel.m
//  WPAttributedMarkupDemo
//
//  Created by mac on 2024/10/26.
//  Copyright © 2024 Nigel Grange. All rights reserved.
//

#import "WPAttributedSymbolModel.h"

static NSString *kWPAttributedSymbolModelStartSymbol = @"<";

static NSString *kWPAttributedSymbolModelEndSymbol = @">";


@implementation WPAttributedSymbolModel

+(void)setStartSymbol:(NSString*)startSymbol {
    kWPAttributedSymbolModelStartSymbol = startSymbol;
}
+(NSString*)startSymbol {
    return kWPAttributedSymbolModelStartSymbol;
}

+(void)setEndSymbol:(NSString*)startSymbol {
    kWPAttributedSymbolModelEndSymbol = startSymbol;
}

+(NSString*)endSymbol {
    return kWPAttributedSymbolModelEndSymbol;
}

@end
