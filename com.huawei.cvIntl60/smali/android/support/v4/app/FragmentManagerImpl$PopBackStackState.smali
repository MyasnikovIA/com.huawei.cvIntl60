.class Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 3839
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3840
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3841
    iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3842
    iput p4, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3843
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3851
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mPrimaryNav:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 3852
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3855
    const/4 v0, 0x0

    .line 3858
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
