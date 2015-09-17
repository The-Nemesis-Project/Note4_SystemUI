.class Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;
.super Landroid/telephony/PhoneStateListener;
.source "SViewCoverMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;->access$300(Lcom/sec/android/cover/sviewcover/SViewCoverMainPage;)V

    .line 118
    return-void
.end method
