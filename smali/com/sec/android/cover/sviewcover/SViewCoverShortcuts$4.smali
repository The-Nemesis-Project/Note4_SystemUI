.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->setupShortcutViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mOpenPopup:Lcom/sec/android/cover/widget/PopupFrameView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/PopupFrameView;->close()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/sviewcover/SViewCoverView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/sviewcover/SViewCoverView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->moveToMainPage()V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 349
    return-void
.end method
