.class Lcom/sec/android/cover/ledcover/LedCoverMainFrameView;
.super Lcom/sec/android/cover/CoverMainFrameView;
.source "LedCoverController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/sec/android/cover/CoverMainFrameView;-><init>(Landroid/content/Context;)V

    .line 805
    return-void
.end method


# virtual methods
.method public getTopmostVisibleView()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 809
    return-object p0
.end method
