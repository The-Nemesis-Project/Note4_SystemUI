.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SViewCoverLauncher"


# instance fields
.field mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverBase;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;

    :cond_0
    return-void
.end method


# virtual methods
.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverBase;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method
