.class public abstract Lcom/sec/android/cover/CoverMainFrameView;
.super Landroid/widget/FrameLayout;
.source "CoverMainFrameView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mPopupManager:Lcom/sec/android/cover/PopupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract getTopmostVisibleView()Landroid/view/ViewGroup;
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 38
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mPopupManager:Lcom/sec/android/cover/PopupManager;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mPopupManager:Lcom/sec/android/cover/PopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/PopupManager;->closeAllPopup()V

    .line 43
    :cond_0
    return-void
.end method

.method public showPopup(Ljava/lang/String;Z)Lcom/sec/android/cover/widget/PopupFrameView;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "closeAllPreviousPopup"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mPopupManager:Lcom/sec/android/cover/PopupManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sec/android/cover/PopupManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getTopmostVisibleView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/cover/PopupManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mPopupManager:Lcom/sec/android/cover/PopupManager;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mPopupManager:Lcom/sec/android/cover/PopupManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/PopupManager;->showPopup(Ljava/lang/String;Z)Lcom/sec/android/cover/widget/PopupFrameView;

    move-result-object v0

    return-object v0
.end method
