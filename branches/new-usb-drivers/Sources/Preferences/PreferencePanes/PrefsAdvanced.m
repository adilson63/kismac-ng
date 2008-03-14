//
//  PrefsAdvanced.h
//  KisMAC
//
//  Created by themacuser on Mon Apr 3 2006.
//

#import "PrefsAdvanced.h"
#import "WaveHelper.h"

@implementation PrefsAdvanced

-(void)updateUI {
    [ac_ff setIntValue:[[controller objectForKey:@"ac_ff"]intValue]];
	[bf_interval setFloatValue:[[controller objectForKey:@"bf_interval"] intValue]];
	[bpfdevice setStringValue:[controller objectForKey:@"bpfdevice"]];
	[bpfloc setStringValue:[controller objectForKey:@"bpfloc"]];
	[pr_interval setIntValue:[[controller objectForKey:@"pr_interval"] intValue]];
	[kismetserverip setStringValue:[controller objectForKey:@"kismetserverip"]];
	[kismetserverport setIntValue:[[controller objectForKey:@"kismetserverport"] intValue]];
}

-(BOOL)updateDictionary {
	[controller setObject:[NSNumber numberWithInt:[ac_ff intValue]] forKey:@"ac_ff"];
	[controller setObject:[NSNumber numberWithFloat:[bf_interval floatValue]] forKey:@"bf_interval"];
	[controller setObject:[bpfdevice stringValue] forKey:@"bpfdevice"];
	[controller setObject:[bpfloc stringValue] forKey:@"bpfloc"];
	[controller setObject:[NSNumber numberWithInt:[pr_interval intValue]] forKey:@"pr_interval"];
	[controller setObject:[kismetserverip stringValue] forKey:@"kismetserverip"];
	[controller setObject:[NSNumber numberWithInt:[kismetserverport intValue]] forKey:@"kismetserverport"];
    return YES;
}

-(IBAction)setValueForSender:(id)sender {
   if(sender == ac_ff) {
	[controller setObject:[NSNumber numberWithInt:[ac_ff intValue]] forKey:@"ac_ff"];
    } else if(sender == bf_interval) {
		[controller setObject:[NSNumber numberWithFloat:[bf_interval floatValue]] forKey:@"bf_interval"];
    } else if(sender == bpfdevice) {
		[controller setObject:[bpfdevice stringValue] forKey:@"bpfdevice"];
    } else if(sender == bpfloc) {
		[controller setObject:[bpfloc stringValue] forKey:@"bpfloc"];
    } else if(sender == pr_interval) {
       [controller setObject:[NSNumber numberWithInt:[pr_interval intValue]] forKey:@"pr_interval"];
	} else if(sender == kismetserverip) {
		[controller setObject:[kismetserverip stringValue] forKey:@"kismetserverip"];
	} else if(sender == kismetserverport) {
		[controller setObject:[NSNumber numberWithInt:[kismetserverport intValue]] forKey:@"kismetserverport"];
	} else {
        NSLog(@"Error: Invalid sender(%@) in setValueForSender:",sender);
    }
}

-(IBAction)setDefaults:(id)sender {
	[ac_ff setIntValue:2];
	[bf_interval setFloatValue:0.1];
	[bpfdevice setStringValue:@"wlt1"];
	[bpfloc setStringValue:@"/dev/bpf0"];
	[pr_interval setIntValue:100];
	[kismetserverip setStringValue:@"127.0.0.1"];
	[kismetserverport setIntValue:2501];
}

@end