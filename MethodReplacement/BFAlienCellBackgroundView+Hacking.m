//
//  BFAlienCellBackgroundView+Hacking.m
//  MethodReplacement
//
//  Created by Dario Lencina on 11/28/12.
//  Copyright (c) 2012 Dario Lencina. All rights reserved.
//

#import "BFAlienCellBackgroundView+Hacking.h"
#import <objc/objc-class.h>

@implementation BFAlienCellBackgroundView (Hacking)

+(void)injectNewDrawRectMethod{
    SEL drawRect = @selector(drawRect:);
    SEL drawRectReplacement = @selector(drawRectReplacement:);
    IMP replacementImplementation= class_getMethodImplementation([BFAlienCellBackgroundView class], drawRectReplacement);
    
    IMP originalImplementation= class_replaceMethod([BFAlienCellBackgroundView class], drawRect, replacementImplementation, NULL);
   
    class_replaceMethod([BFAlienCellBackgroundView class], @selector(drawRectOldImplementation:), originalImplementation, NULL);
}


-(void)drawRectReplacement:(CGRect)rect{
    NSLog(@"replacement");
    [self drawRectOldImplementation:rect];
}

-(void)drawRectOldImplementation:(CGRect)rect{
    NSLog(@"Super loco should never be called");
}

@end
