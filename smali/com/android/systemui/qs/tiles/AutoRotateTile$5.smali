.class Lcom/android/systemui/qs/tiles/AutoRotateTile$5;
.super Ljava/lang/Object;
.source "AutoRotateTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AutoRotateTile;->showSecondaryMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

.field final synthetic val$isVideoRotate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->val$isVideoRotate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01f6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->val$isVideoRotate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->setGalleryVideoRotation(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->closeDetailviewPanel()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01f7

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->val$isVideoRotate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # getter for: Lcom/android/systemui/qs/tiles/AutoRotateTile;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$100(Lcom/android/systemui/qs/tiles/AutoRotateTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->setAutoRotation(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$600(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    # invokes: Lcom/android/systemui/qs/tiles/AutoRotateTile;->setGalleryVideoRotation(Z)V
    invoke-static {v0, v3}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->access$700(Lcom/android/systemui/qs/tiles/AutoRotateTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->closeDetailviewPanel()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AutoRotateTile$5;->this$0:Lcom/android/systemui/qs/tiles/AutoRotateTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AutoRotateTile;->closeDetailviewPanel()V

    goto :goto_0
.end method
