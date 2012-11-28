//
//  BFAlienCellBackgroundView+Hacking.h
//  MethodReplacement
//
//  Created by Dario Lencina on 11/28/12.
//  Copyright (c) 2012 Dario Lencina. All rights reserved.
//

#import "BFAlienCellBackgroundView.h"

@interface BFAlienCellBackgroundView (Hacking)
+(void)injectNewDrawRectMethod;
@end
