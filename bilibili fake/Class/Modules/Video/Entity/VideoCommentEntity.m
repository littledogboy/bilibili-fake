//
//  VideoCommentEntity.m
//  bilibili fake
//
//  Created by 翟泉 on 2016/7/21.
//  Copyright © 2016年 云之彼端. All rights reserved.
//

#import "VideoCommentEntity.h"

@implementation VideoCommentEntity

+ (NSDictionary *)mj_objectClassInArray; {
    return @{@"hotList": NSStringFromClass([VideoCommentItemEntity class]), @"list": NSStringFromClass([VideoCommentItemEntity class])};
}


+ (NSArray *)mj_ignoredPropertyNames {
    return @[@"hasNext"];
}

- (NSArray<NSArray<VideoCommentItemEntity *> *> *)commentList {
    return @[self.hotList, self.list];
}

- (BOOL)hasNext {
    return _page < _pages;
}

@end
