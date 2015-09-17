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

    const-class v0, Lcom/sec/android/cover/PopupManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/PopupManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public closeAllPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sec/android/cover/widget/PopupFrameView;->closeAllPopup(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showPopup(Ljava/lang/String;Z)Lcom/sec/android/cover/widget/PopupFrameView;
    .locals 4

    sget-object v2, Lcom/sec/android/cover/PopupManager;->TAG:Ljava/lang/String;

    const-string v3, "showPopup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils$ASSERT;->notNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/cover/widget/PopupFrameView;

    invoke-direct {v1, v0}, Lcom/sec/android/cover/widget/PopupFrameView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/cover/PopupManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, p1, p2}, Lcom/sec/android/cover/widget/PopupFrameView;->show(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    return-object v1
.end method
