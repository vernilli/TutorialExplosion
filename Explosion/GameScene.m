//
//  GameScene.m
//  Explosion
//
//  Created by Victor Vernilli on 21/05/15.
//  Copyright (c) 2015 Victor Vernilli. All rights reserved.
//

#import "GameScene.h"

@interface GameScene (){
    SKSpriteNode* _exp;
}
@end

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    
    [self criarExp];
    
}

-(void) criarExp{
    
    SKTexture* exp1 = [SKTexture textureWithImageNamed:@"Ex1.png"];
    SKTexture* exp2 = [SKTexture textureWithImageNamed:@"Ex2.png"];
    SKTexture* exp3 = [SKTexture textureWithImageNamed:@"Ex3.png"];
    SKTexture* exp4 = [SKTexture textureWithImageNamed:@"Ex4.png"];
    SKTexture* exp5 = [SKTexture textureWithImageNamed:@"Ex5.png"];
    SKTexture* exp6 = [SKTexture textureWithImageNamed:@"Ex6.png"];
    SKTexture* exp7 = [SKTexture textureWithImageNamed:@"Ex7.png"];
    SKTexture* exp8 = [SKTexture textureWithImageNamed:@"Ex8.png"];
    SKTexture* exp9 = [SKTexture textureWithImageNamed:@"Ex9.png"];
    SKTexture* exp10 = [SKTexture textureWithImageNamed:@"Ex10.png"];
    SKTexture* exp11 = [SKTexture textureWithImageNamed:@"Ex11.png"];
    SKTexture* exp12 = [SKTexture textureWithImageNamed:@"Ex12.png"];
    SKTexture* exp13 = [SKTexture textureWithImageNamed:@"Ex13.png"];
    SKTexture* exp14 = [SKTexture textureWithImageNamed:@"Ex14.png"];
    SKTexture* exp15 = [SKTexture textureWithImageNamed:@"Ex15.png"];

    SKAction* animation = [SKAction repeatAction:[SKAction animateWithTextures:@[exp1,exp2,exp3,exp4,exp5,exp6,exp7,exp8,exp9,exp10,exp11,exp12,exp13,exp14,exp15] timePerFrame:0.1] count:4];
    
    _exp = [SKSpriteNode spriteNodeWithTexture:exp1];
    _exp.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    [self addChild:_exp];
    [_exp runAction:animation];
    
}

@end
