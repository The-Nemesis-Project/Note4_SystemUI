.class Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;
.super Landroid/os/Handler;
.source "SecAttributionInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/SecAttributionInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    # invokes: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->unregisterLogoImageFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$000(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/SecAttributionInfoView$1;->this$0:Lcom/android/keyguard/sec/rich/SecAttributionInfoView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->updateLogoImage(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/SecAttributionInfoView;->access$100(Lcom/android/keyguard/sec/rich/SecAttributionInfoView;Z)V

    return-void
.end method
