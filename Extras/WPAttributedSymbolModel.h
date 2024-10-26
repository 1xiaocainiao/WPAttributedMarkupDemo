//
//  WPAttributedSymbolModel.h
//  WPAttributedMarkupDemo
//
//  Created by mac on 2024/10/26.
//  Copyright © 2024 Nigel Grange. All rights reserved.
//

/// 注意这个只需要全局设置一次，如果每个页面不同那就需要再每个页面都设置

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WPAttributedSymbolModel : NSObject

+(void)setStartSymbol:(NSString*)startSymbol;
+(NSString*)startSymbol;

+(void)setEndSymbol:(NSString*)startSymbol;
+(NSString*)endSymbol;


@end

NS_ASSUME_NONNULL_END
