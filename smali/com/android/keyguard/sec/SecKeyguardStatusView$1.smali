.class Lcom/android/keyguard/sec/SecKeyguardStatusView$1;
.super Landroid/os/Handler;
.source "SecKeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardStatusView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardStatusView;->handleMyProfileSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->access$000(Lcom/android/keyguard/sec/SecKeyguardStatusView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
