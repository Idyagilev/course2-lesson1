//
//  Animations.h
//   Lesson 1
//
//  Created by T on 07.08.16.
//  Copyright © 2016 Tanya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animations : NSObject

+ (void) animatedView: (UIView *) view withColor : (UIColor *) color ;
+ (void) animatedText: (UILabel *) label withText : (NSString *) text ;
+ (void) animatedFrame: (UIView *) view withFrame : (CGRect ) rect ;
+ (void) animatedTransform: (UIView *) view withScale: (CGFloat ) scale move_X: (CGFloat ) moveX move_Y: (CGFloat ) moveY alpha: (CGFloat ) alpha delay: (CGFloat ) delay ;
+ (void) animatedImage: (UIImageView *) imageView image: (UIImage *) image ;

@end
