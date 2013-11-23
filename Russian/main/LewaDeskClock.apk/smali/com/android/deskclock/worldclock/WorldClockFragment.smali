.class public Lcom/android/deskclock/worldclock/WorldClockFragment;
.super Landroid/app/Fragment;
.source "WorldClockFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/worldclock/WorldClockFragment$DeleteCity;,
        Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;
    }
.end annotation


# static fields
.field private static final ADDACTIVITYREQUESTCODE:I = 0x1

.field private static final ADDCITY:I = 0x65

.field public static final UPDATE_WORLDCLOCK_LISTVIEW:Ljava/lang/String; = "update_worldclock_listview"


# instance fields
.field private isDeleting:Z

.field private listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

.field private mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

.field private mDefaultHeightSplitActionBar:I

.field private mEmptLayout:Landroid/widget/LinearLayout;

.field private mFootView:Landroid/view/View;

.field private mHeightSplitActionBar:I

.field private mListView:Landroid/widget/ListView;

.field private mSelectIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mWeatherIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mcontext:Landroid/app/Activity;

.field private mstrFormat:Ljava/lang/String;

.field private updateListView:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSelectIds:Ljava/util/Set;

    .line 57
    iput-boolean v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    .line 59
    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    .line 60
    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    .line 65
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/worldclock/WorldClockFragment$1;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 376
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockFragment$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/worldclock/WorldClockFragment$2;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/worldclock/WorldClockFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->refreshListView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/worldclock/WorldClockFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/deskclock/worldclock/WorldClockFragment;)Lcom/android/deskclock/worldclock/WorldClockAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/deskclock/worldclock/WorldClockFragment;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSelectIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/worldclock/WorldClockFragment;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/worldclock/WorldClockFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/worldclock/WorldClockFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/deskclock/worldclock/WorldClockFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->isDeleting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/deskclock/worldclock/WorldClockFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mstrFormat:Ljava/lang/String;

    return-object v0
.end method

.method private addFooterViewForSplitBar()V
    .registers 5

    .prologue
    .line 181
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    .line 187
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method private getSystemLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 232
    .local v0, l:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initWeatherIds()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v4, weatherIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "isFirstBoot"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 204
    .local v2, isFirstBoot:Z
    if-eqz v2, :cond_37

    .line 205
    const-string v5, "2099280"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "cities"

    const-string v7, ",2099280"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isFirstBoot"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    :cond_36
    return-object v4

    .line 210
    :cond_37
    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "cities"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, chooses:Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 212
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, sac:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_49
    array-length v5, v3

    if-ge v1, v5, :cond_36

    .line 214
    aget-object v5, v3, v1

    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/deskclock/worldclock/ClockCityUtils;->getCityNameByWeatherID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 216
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_49
.end method

.method private isSamelanguage()Z
    .registers 5

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 226
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "language"

    const-string v3, "zh"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, language:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getSystemLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private refreshListView()V
    .registers 5

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->isSamelanguage()Z

    move-result v0

    if-nez v0, :cond_d

    .line 118
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/worldclock/ClockCityUtils;->loadTimeZone(Landroid/content/Context;)V

    .line 120
    :cond_d
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->initWeatherIds()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 122
    new-instance v0, Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040028

    iget-object v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/deskclock/worldclock/WorldClockAdaptor;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mAdapter:Lcom/android/deskclock/worldclock/WorldClockAdaptor;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/deskclock/worldclock/WorldClockAdaptor;->setListView(Landroid/widget/ListView;)V

    .line 130
    :goto_39
    return-void

    .line 127
    :cond_3a
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_39
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x904000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mstrFormat:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->setHasOptionsMenu(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 151
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClockMainActivity;

    invoke-virtual {v1}, Lcom/android/deskclock/DeskClockMainActivity;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_4c

    .line 152
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 153
    const/16 v1, 0x65

    const v2, 0x7f0c006b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4c

    .line 160
    iget v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    if-nez v1, :cond_4c

    .line 161
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSplitHeight()I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    .line 162
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    if-eqz v1, :cond_4c

    .line 163
    iget v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    if-eqz v1, :cond_4d

    .line 164
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mHeightSplitActionBar:I

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4c
    :goto_4c
    return-void

    .line 169
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_4d
    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mFootView:Landroid/view/View;

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mDefaultHeightSplitActionBar:I

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 87
    const v4, 0x7f040027

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, view:Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    .line 90
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 91
    new-instance v4, Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;-><init>(Lcom/android/deskclock/worldclock/WorldClockFragment;Lcom/android/deskclock/worldclock/WorldClockFragment$1;)V

    iput-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    .line 92
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mCallback:Lcom/android/deskclock/worldclock/WorldClockFragment$ModeCallback;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 93
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    .line 94
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f100030

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, emptyImage:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mEmptLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f100031

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, emptyText:Landroid/widget/TextView;
    const v4, 0x7f0c006a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 99
    const v4, 0x7f02009a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "choosecity"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->refreshListView()V

    .line 104
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "update_worldclock_listview"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    .line 107
    iget-object v4, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-object v3
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 145
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mcontext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->updateListView:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/worldclock/DeleteWorldClockCity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectPosition"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v1, "weatherIds"

    iget-object v2, p0, Lcom/android/deskclock/worldclock/WorldClockFragment;->mWeatherIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->startActivity(Landroid/content/Intent;)V

    .line 250
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_18

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/deskclock/worldclock/AddWorldClockCity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/worldclock/WorldClockFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 197
    .end local v0           #intent:Landroid/content/Intent;
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_17
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 114
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 136
    invoke-virtual {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "language"

    invoke-direct {p0}, Lcom/android/deskclock/worldclock/WorldClockFragment;->getSystemLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method
