.class Lcom/android/systemui/recents/views/RecentsView$3$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$3;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$3;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$3;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView$3;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lockCurrentTask()V

    .line 655
    return-void
.end method