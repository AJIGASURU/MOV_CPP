//
//  AppDelegate.m
//  appp
//
//  Created by MacUser on 2020/09/29.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

- (IBAction)OpenFile:(NSMenuItem*)sender {
  //このsenderって引数なのかよ:(データ型)変数
  NSOpenPanel *openpanel = [NSOpenPanel openPanel];
  //openPanelのパラメータを設定
  NSArray *fileTypes = [NSArray arrayWithObjects:@"png",@"jpeg", nil];
  [openpanel setAllowedFileTypes:fileTypes]; //選択できるファイルの種類
  [openpanel setCanChooseFiles:YES]; //ファイルの選択の可否
  [openpanel setCanChooseDirectories:NO]; //ディレクトリの選択の可否
  //[openpanel setResolvesAliases:NO]; //エイリアス解析の可否
  [openpanel setShowsHiddenFiles:YES]; //隠しファイル表示の可否
  [openpanel setAllowsMultipleSelection:NO]; //複数ファイル選択の可否
  [openpanel setPrompt:@"ついか〜"]; //ボタンのタイトル
  [openpanel setMessage:@"ファイルを選べ"]; //表示するメッセージテキスト
  /*
      [openpanel beginSheetModalForWindow: completionHandler:^(NSInteger result){
  if (result == NSFileHandlingPanelOKButton) {
  NSArray *urls = [openpanel URLs];
              [txtField setStringValue:[[urls objectAtIndex:0]path]];
          }
      }];
   */
  
  //https://cocoaapi.hatenablog.com/entry/20120131/p1
  //理解せえや。何見ればええんや・・・・
  //openpanelのbeginWithCompletionHandler関数？
  //^はブロック構文らしい。引数を関数みたいに書けるらしい。resultは引数か。
  //https://iscene.jimdofree.com/2015/06/13/objective-c-ブロック構文の基本的な使い方/
  [openpanel beginWithCompletionHandler:^(NSInteger result){
          
          if (result == NSFileHandlingPanelOKButton) {
              NSURL*  theDoc = [[openpanel URLs] objectAtIndex:0];
              //NSURL *url = openPanel.URL;
              // Open  the document.
              //NSData *dat = [NSData dataWithContentsOfURL: theDoc ];
              
              //NSString *output = [[NSString alloc] initWithData:dat encoding:NSASCIIStringEncoding];
                            
              //[self performSelectorOnMainThread:@selector(displayText:) withObject:output waitUntilDone:NO];
            
              NSLog(@"Add Path: %@", [theDoc path]);
              Image *newImage = [[Image alloc ] init];
              //インスタンス化してますが、こんなところでいいかは知らん。
              [newImage load_img:[theDoc path]];
          }
      }];
  
  /*
  NSArray *urls = [openpanel URLs];
  id image = [[Image alloc] init];
  [image load_img];
   */
}

@end
