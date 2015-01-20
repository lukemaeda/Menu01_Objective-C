#import "MainScene.h"

@implementation MainScene

-(void) didLoadFromCCB
{
    
    // メニュー表示
    CCLabelTTF *label = [CCLabelTTF labelWithString:@"メニュー"
                                           fontName:@"Arial"
                                           fontSize:24];
    
    // フォントカラー
    label.fontColor = [CCColor whiteColor];
    
    // 座標系が異なります。UIKitは左上が(0,0)、cocos2dは左下が(0,0)です。
    label.position = ccp(285, 220);
    
    // label表示
    [self addChild:label];
    
    //_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
    // アクションメニューボタンの作成記述
    
    // first buttonの生成
    CCButton *calculationButton = [CCButton buttonWithTitle:@"計算ボタン"];
    [calculationButton setTarget:self
                        selector:@selector(calculationButtonTouched:)];
    
    // second buttonの生成
    CCButton *animationButton = [CCButton buttonWithTitle:@"アニメーションボタン"];
    [animationButton setTarget:self
                      selector:@selector(animateButtonTouched:)];
    
    // layoutboxの生成
    CCLayoutBox *layoutBox = [[CCLayoutBox alloc] init];
    
    // layoutBoxアンカーポイント 中央
    layoutBox.anchorPoint = ccp(0.5, 0.5);
    
    // calculationStepButtonをレイアウトに追加
    [layoutBox addChild:calculationButton];
    
    // animationButtonをレイアウトに追加
    [layoutBox addChild:animationButton];
    
    // 上部ボタンとの空白
    layoutBox.spacing = 20.f;
    
    // Vertical:垂直に整列
    layoutBox.direction = CCLayoutBoxDirectionVertical;
    
    // layoutBoxにlayout
    [layoutBox layout];
    
    // cocos2dではCCDirectorを使ってウィンドウサイズを取得
    CGSize size = [[CCDirector sharedDirector] designSize];
    
    // ログで幅と高さのサイズ確認
    NSLog(@"幅　高さ %f %f", size.width, size.height);
    
    // layoutBoxの表示位置を中央 幅:半分　高さ:半分
    // 座標系が異なります。UIKitは左上が(0,0)、cocos2dは左下が(0,0)です。
    layoutBox.position = ccp(size.width / 2, size.height / 2);
    
    // layoutBoxを表示
    [self addChild:layoutBox];
    
}

// 計算ボタンのアクション
-(void)calculationButtonTouched:(CCButton*)sender
{
    NSLog(@"計算");
}

// アニメーションボタンのアクション
-(void)animateButtonTouched:(CCButton*)sender
{
    NSLog(@"アニメーション");
    
}

@end
