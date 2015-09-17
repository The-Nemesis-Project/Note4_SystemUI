.class Lcom/sec/android/cover/PopupManager;
.super Ljava/lang/Object;
.source "CoverMainFrameView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sec/android/cover/PopupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/PopupManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "topmostVisibleView"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    .line 55
    return-void
.end method


# virtual methods
.method public closeAllPopup()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sec/android/cover/widget/PopupFrameView;->closeAllPopup(Landroid/view/ViewGroup;)V

    .line 72
    return-void
.end method

.method public showPopup(Ljava/lang/String;Z)Lcom/sec/android/cover/widget/PopupFrameView;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "closeAllPreviousPopup"    # Z

    .prologue
    .line 58
    sget-object v2, Lcom/sec/android/cover/PopupManager;->TAG:Ljava/lang/String;

    const-string v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils$ASSERT;->notNull(Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {v1, v0}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "popupView":Lcom/sec/android/cover/widget/PopupFrameView;
    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 67
    return-object v1
.end method
