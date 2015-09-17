.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortcutItem"
.end annotation


# instance fields
.field public mContainerId:I

.field public mIconId:I

.field public mTitleId:I

.field public mType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "containerId"    # I
    .param p3, "iconId"    # I
    .param p4, "titleId"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mType:I

    .line 103
    iput p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mContainerId:I

    .line 104
    iput p3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mIconId:I

    .line 105
    iput p4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$ShortcutItem;->mTitleId:I

    .line 106
    return-void
.end method
