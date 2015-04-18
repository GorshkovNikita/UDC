﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.19448
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UDC.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="DBLibUDC_21_01")]
    public partial class UDCDataClassesDataContext : System.Data.Linq.DataContext, IUDCDataClassesDataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertComositeIndexToIndex(ComositeIndexToIndex instance);
    partial void UpdateComositeIndexToIndex(ComositeIndexToIndex instance);
    partial void DeleteComositeIndexToIndex(ComositeIndexToIndex instance);
    partial void InsertCompositeIndex(CompositeIndex instance);
    partial void UpdateCompositeIndex(CompositeIndex instance);
    partial void DeleteCompositeIndex(CompositeIndex instance);
    partial void InsertCurrentIndex(CurrentIndex instance);
    partial void UpdateCurrentIndex(CurrentIndex instance);
    partial void DeleteCurrentIndex(CurrentIndex instance);
    partial void InsertIndex(Index instance);
    partial void UpdateIndex(Index instance);
    partial void DeleteIndex(Index instance);
    partial void InsertReference(Reference instance);
    partial void UpdateReference(Reference instance);
    partial void DeleteReference(Reference instance);
    #endregion
		
		public UDCDataClassesDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DBLibUDC_21_01ConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public UDCDataClassesDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public UDCDataClassesDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public UDCDataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public UDCDataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<ComositeIndexToIndex> ComositeIndexToIndexes
		{
			get
			{
				return this.GetTable<ComositeIndexToIndex>();
			}
		}
		
		public System.Data.Linq.Table<CompositeIndex> CompositeIndexes
		{
			get
			{
				return this.GetTable<CompositeIndex>();
			}
		}
		
		public System.Data.Linq.Table<CurrentIndex> CurrentIndexes
		{
			get
			{
				return this.GetTable<CurrentIndex>();
			}
		}
		
		public System.Data.Linq.Table<Index> Indexes
		{
			get
			{
				return this.GetTable<Index>();
			}
		}
		
		public System.Data.Linq.Table<Reference> References
		{
			get
			{
				return this.GetTable<Reference>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.ComositeIndexToIndex")]
	public partial class ComositeIndexToIndex : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private int _IdIndex;
		
		private System.Nullable<int> _IdCompIndex;
		
		private EntityRef<CompositeIndex> _CompositeIndex;
		
		private EntityRef<Index> _Index;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnIdIndexChanging(int value);
    partial void OnIdIndexChanged();
    partial void OnIdCompIndexChanging(System.Nullable<int> value);
    partial void OnIdCompIndexChanged();
    #endregion
		
		public ComositeIndexToIndex()
		{
			this._CompositeIndex = default(EntityRef<CompositeIndex>);
			this._Index = default(EntityRef<Index>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdIndex", DbType="Int NOT NULL")]
		public int IdIndex
		{
			get
			{
				return this._IdIndex;
			}
			set
			{
				if ((this._IdIndex != value))
				{
					if (this._Index.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnIdIndexChanging(value);
					this.SendPropertyChanging();
					this._IdIndex = value;
					this.SendPropertyChanged("IdIndex");
					this.OnIdIndexChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IdCompIndex", DbType="Int")]
		public System.Nullable<int> IdCompIndex
		{
			get
			{
				return this._IdCompIndex;
			}
			set
			{
				if ((this._IdCompIndex != value))
				{
					if (this._CompositeIndex.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnIdCompIndexChanging(value);
					this.SendPropertyChanging();
					this._IdCompIndex = value;
					this.SendPropertyChanged("IdCompIndex");
					this.OnIdCompIndexChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CompositeIndex_ComositeIndexToIndex", Storage="_CompositeIndex", ThisKey="IdCompIndex", OtherKey="Id", IsForeignKey=true)]
		public CompositeIndex CompositeIndex
		{
			get
			{
				return this._CompositeIndex.Entity;
			}
			set
			{
				CompositeIndex previousValue = this._CompositeIndex.Entity;
				if (((previousValue != value) 
							|| (this._CompositeIndex.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._CompositeIndex.Entity = null;
						previousValue.ComositeIndexToIndexes.Remove(this);
					}
					this._CompositeIndex.Entity = value;
					if ((value != null))
					{
						value.ComositeIndexToIndexes.Add(this);
						this._IdCompIndex = value.Id;
					}
					else
					{
						this._IdCompIndex = default(Nullable<int>);
					}
					this.SendPropertyChanged("CompositeIndex");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_ComositeIndexToIndex", Storage="_Index", ThisKey="IdIndex", OtherKey="Id", IsForeignKey=true)]
		public Index Index
		{
			get
			{
				return this._Index.Entity;
			}
			set
			{
				Index previousValue = this._Index.Entity;
				if (((previousValue != value) 
							|| (this._Index.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Index.Entity = null;
						previousValue.ComositeIndexToIndexes.Remove(this);
					}
					this._Index.Entity = value;
					if ((value != null))
					{
						value.ComositeIndexToIndexes.Add(this);
						this._IdIndex = value.Id;
					}
					else
					{
						this._IdIndex = default(int);
					}
					this.SendPropertyChanged("Index");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.CompositeIndex")]
	public partial class CompositeIndex : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _Value;
		
		private string _Name;
		
		private EntitySet<ComositeIndexToIndex> _ComositeIndexToIndexes;
		
		private EntitySet<Reference> _References;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnValueChanging(string value);
    partial void OnValueChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    #endregion
		
		public CompositeIndex()
		{
			this._ComositeIndexToIndexes = new EntitySet<ComositeIndexToIndex>(new Action<ComositeIndexToIndex>(this.attach_ComositeIndexToIndexes), new Action<ComositeIndexToIndex>(this.detach_ComositeIndexToIndexes));
			this._References = new EntitySet<Reference>(new Action<Reference>(this.attach_References), new Action<Reference>(this.detach_References));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Value", DbType="NVarChar(255) NOT NULL", CanBeNull=false)]
		public string Value
		{
			get
			{
				return this._Value;
			}
			set
			{
				if ((this._Value != value))
				{
					this.OnValueChanging(value);
					this.SendPropertyChanging();
					this._Value = value;
					this.SendPropertyChanged("Value");
					this.OnValueChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(MAX)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CompositeIndex_ComositeIndexToIndex", Storage="_ComositeIndexToIndexes", ThisKey="Id", OtherKey="IdCompIndex")]
		public EntitySet<ComositeIndexToIndex> ComositeIndexToIndexes
		{
			get
			{
				return this._ComositeIndexToIndexes;
			}
			set
			{
				this._ComositeIndexToIndexes.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CompositeIndex_Reference", Storage="_References", ThisKey="Id", OtherKey="ToCompIndexId")]
		public EntitySet<Reference> References
		{
			get
			{
				return this._References;
			}
			set
			{
				this._References.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_ComositeIndexToIndexes(ComositeIndexToIndex entity)
		{
			this.SendPropertyChanging();
			entity.CompositeIndex = this;
		}
		
		private void detach_ComositeIndexToIndexes(ComositeIndexToIndex entity)
		{
			this.SendPropertyChanging();
			entity.CompositeIndex = null;
		}
		
		private void attach_References(Reference entity)
		{
			this.SendPropertyChanging();
			entity.CompositeIndex = this;
		}
		
		private void detach_References(Reference entity)
		{
			this.SendPropertyChanging();
			entity.CompositeIndex = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.CurrentIndex")]
	public partial class CurrentIndex : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private byte _id;
		
		private string _MainTableID;
		
		private string _LanguageID;
		
		private string _FormID;
		
		private string _TimeID;
		
		private string _PlaceID;
		
		private string _NationID;
		
		private string _PropertyID;
		
		private string _SignBetween;
		
		private string _FirstBracket;
		
		private string _SecondBracket;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(byte value);
    partial void OnidChanged();
    partial void OnMainTableIDChanging(string value);
    partial void OnMainTableIDChanged();
    partial void OnLanguageIDChanging(string value);
    partial void OnLanguageIDChanged();
    partial void OnFormIDChanging(string value);
    partial void OnFormIDChanged();
    partial void OnTimeIDChanging(string value);
    partial void OnTimeIDChanged();
    partial void OnPlaceIDChanging(string value);
    partial void OnPlaceIDChanged();
    partial void OnNationIDChanging(string value);
    partial void OnNationIDChanged();
    partial void OnPropertyIDChanging(string value);
    partial void OnPropertyIDChanged();
    partial void OnSignBetweenChanging(string value);
    partial void OnSignBetweenChanged();
    partial void OnFirstBracketChanging(string value);
    partial void OnFirstBracketChanged();
    partial void OnSecondBracketChanging(string value);
    partial void OnSecondBracketChanged();
    #endregion
		
		public CurrentIndex()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", DbType="TinyInt NOT NULL", IsPrimaryKey=true)]
		public byte id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MainTableID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string MainTableID
		{
			get
			{
				return this._MainTableID;
			}
			set
			{
				if ((this._MainTableID != value))
				{
					this.OnMainTableIDChanging(value);
					this.SendPropertyChanging();
					this._MainTableID = value;
					this.SendPropertyChanged("MainTableID");
					this.OnMainTableIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LanguageID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string LanguageID
		{
			get
			{
				return this._LanguageID;
			}
			set
			{
				if ((this._LanguageID != value))
				{
					this.OnLanguageIDChanging(value);
					this.SendPropertyChanging();
					this._LanguageID = value;
					this.SendPropertyChanged("LanguageID");
					this.OnLanguageIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FormID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string FormID
		{
			get
			{
				return this._FormID;
			}
			set
			{
				if ((this._FormID != value))
				{
					this.OnFormIDChanging(value);
					this.SendPropertyChanging();
					this._FormID = value;
					this.SendPropertyChanged("FormID");
					this.OnFormIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TimeID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string TimeID
		{
			get
			{
				return this._TimeID;
			}
			set
			{
				if ((this._TimeID != value))
				{
					this.OnTimeIDChanging(value);
					this.SendPropertyChanging();
					this._TimeID = value;
					this.SendPropertyChanged("TimeID");
					this.OnTimeIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PlaceID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string PlaceID
		{
			get
			{
				return this._PlaceID;
			}
			set
			{
				if ((this._PlaceID != value))
				{
					this.OnPlaceIDChanging(value);
					this.SendPropertyChanging();
					this._PlaceID = value;
					this.SendPropertyChanged("PlaceID");
					this.OnPlaceIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NationID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string NationID
		{
			get
			{
				return this._NationID;
			}
			set
			{
				if ((this._NationID != value))
				{
					this.OnNationIDChanging(value);
					this.SendPropertyChanging();
					this._NationID = value;
					this.SendPropertyChanged("NationID");
					this.OnNationIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PropertyID", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string PropertyID
		{
			get
			{
				return this._PropertyID;
			}
			set
			{
				if ((this._PropertyID != value))
				{
					this.OnPropertyIDChanging(value);
					this.SendPropertyChanging();
					this._PropertyID = value;
					this.SendPropertyChanged("PropertyID");
					this.OnPropertyIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SignBetween", DbType="NVarChar(5)")]
		public string SignBetween
		{
			get
			{
				return this._SignBetween;
			}
			set
			{
				if ((this._SignBetween != value))
				{
					this.OnSignBetweenChanging(value);
					this.SendPropertyChanging();
					this._SignBetween = value;
					this.SendPropertyChanged("SignBetween");
					this.OnSignBetweenChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FirstBracket", DbType="NVarChar(40) NOT NULL", CanBeNull=false)]
		public string FirstBracket
		{
			get
			{
				return this._FirstBracket;
			}
			set
			{
				if ((this._FirstBracket != value))
				{
					this.OnFirstBracketChanging(value);
					this.SendPropertyChanging();
					this._FirstBracket = value;
					this.SendPropertyChanged("FirstBracket");
					this.OnFirstBracketChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SecondBracket", DbType="NVarChar(40) NOT NULL", CanBeNull=false)]
		public string SecondBracket
		{
			get
			{
				return this._SecondBracket;
			}
			set
			{
				if ((this._SecondBracket != value))
				{
					this.OnSecondBracketChanging(value);
					this.SendPropertyChanging();
					this._SecondBracket = value;
					this.SendPropertyChanged("SecondBracket");
					this.OnSecondBracketChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[Index]")]
	public partial class Index : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _Value;
		
		private System.Nullable<int> _ParentId;
		
		private string _Name;
		
		private string _Comment;
		
		private string _SubdivideWith;
		
		private string _SubdivideAs;
		
		private string _IndexType;
		
		private string _TableType;
		
		private bool _Removed;
		
		private bool _isGroupIndex;
		
		private bool _isDontKnowExact;
		
		private EntitySet<ComositeIndexToIndex> _ComositeIndexToIndexes;
		
		private EntitySet<Index> _Indexes;
		
		private EntitySet<Reference> _References;
		
		private EntitySet<Reference> _References1;
		
		private EntityRef<Index> _Index1;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnValueChanging(string value);
    partial void OnValueChanged();
    partial void OnParentIdChanging(System.Nullable<int> value);
    partial void OnParentIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnCommentChanging(string value);
    partial void OnCommentChanged();
    partial void OnSubdivideWithChanging(string value);
    partial void OnSubdivideWithChanged();
    partial void OnSubdivideAsChanging(string value);
    partial void OnSubdivideAsChanged();
    partial void OnIndexTypeChanging(string value);
    partial void OnIndexTypeChanged();
    partial void OnTableTypeChanging(string value);
    partial void OnTableTypeChanged();
    partial void OnRemovedChanging(bool value);
    partial void OnRemovedChanged();
    partial void OnisGroupIndexChanging(bool value);
    partial void OnisGroupIndexChanged();
    partial void OnisDontKnowExactChanging(bool value);
    partial void OnisDontKnowExactChanged();
    #endregion
		
		public Index()
		{
			this._ComositeIndexToIndexes = new EntitySet<ComositeIndexToIndex>(new Action<ComositeIndexToIndex>(this.attach_ComositeIndexToIndexes), new Action<ComositeIndexToIndex>(this.detach_ComositeIndexToIndexes));
			this._Indexes = new EntitySet<Index>(new Action<Index>(this.attach_Indexes), new Action<Index>(this.detach_Indexes));
			this._References = new EntitySet<Reference>(new Action<Reference>(this.attach_References), new Action<Reference>(this.detach_References));
			this._References1 = new EntitySet<Reference>(new Action<Reference>(this.attach_References1), new Action<Reference>(this.detach_References1));
			this._Index1 = default(EntityRef<Index>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Value", DbType="VarChar(255) NOT NULL", CanBeNull=false)]
		public string Value
		{
			get
			{
				return this._Value;
			}
			set
			{
				if ((this._Value != value))
				{
					this.OnValueChanging(value);
					this.SendPropertyChanging();
					this._Value = value;
					this.SendPropertyChanged("Value");
					this.OnValueChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ParentId", DbType="Int")]
		public System.Nullable<int> ParentId
		{
			get
			{
				return this._ParentId;
			}
			set
			{
				if ((this._ParentId != value))
				{
					if (this._Index1.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnParentIdChanging(value);
					this.SendPropertyChanging();
					this._ParentId = value;
					this.SendPropertyChanged("ParentId");
					this.OnParentIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(300)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Comment", DbType="NVarChar(MAX)")]
		public string Comment
		{
			get
			{
				return this._Comment;
			}
			set
			{
				if ((this._Comment != value))
				{
					this.OnCommentChanging(value);
					this.SendPropertyChanging();
					this._Comment = value;
					this.SendPropertyChanged("Comment");
					this.OnCommentChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SubdivideWith", DbType="NVarChar(MAX)")]
		public string SubdivideWith
		{
			get
			{
				return this._SubdivideWith;
			}
			set
			{
				if ((this._SubdivideWith != value))
				{
					this.OnSubdivideWithChanging(value);
					this.SendPropertyChanging();
					this._SubdivideWith = value;
					this.SendPropertyChanged("SubdivideWith");
					this.OnSubdivideWithChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SubdivideAs", DbType="NVarChar(255)")]
		public string SubdivideAs
		{
			get
			{
				return this._SubdivideAs;
			}
			set
			{
				if ((this._SubdivideAs != value))
				{
					this.OnSubdivideAsChanging(value);
					this.SendPropertyChanging();
					this._SubdivideAs = value;
					this.SendPropertyChanged("SubdivideAs");
					this.OnSubdivideAsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IndexType", DbType="VarChar(30) NOT NULL", CanBeNull=false)]
		public string IndexType
		{
			get
			{
				return this._IndexType;
			}
			set
			{
				if ((this._IndexType != value))
				{
					this.OnIndexTypeChanging(value);
					this.SendPropertyChanging();
					this._IndexType = value;
					this.SendPropertyChanged("IndexType");
					this.OnIndexTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TableType", DbType="NVarChar(50)")]
		public string TableType
		{
			get
			{
				return this._TableType;
			}
			set
			{
				if ((this._TableType != value))
				{
					this.OnTableTypeChanging(value);
					this.SendPropertyChanging();
					this._TableType = value;
					this.SendPropertyChanged("TableType");
					this.OnTableTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Removed", DbType="Bit NOT NULL")]
		public bool Removed
		{
			get
			{
				return this._Removed;
			}
			set
			{
				if ((this._Removed != value))
				{
					this.OnRemovedChanging(value);
					this.SendPropertyChanging();
					this._Removed = value;
					this.SendPropertyChanged("Removed");
					this.OnRemovedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_isGroupIndex", DbType="Bit NOT NULL")]
		public bool isGroupIndex
		{
			get
			{
				return this._isGroupIndex;
			}
			set
			{
				if ((this._isGroupIndex != value))
				{
					this.OnisGroupIndexChanging(value);
					this.SendPropertyChanging();
					this._isGroupIndex = value;
					this.SendPropertyChanged("isGroupIndex");
					this.OnisGroupIndexChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_isDontKnowExact", DbType="Bit NOT NULL")]
		public bool isDontKnowExact
		{
			get
			{
				return this._isDontKnowExact;
			}
			set
			{
				if ((this._isDontKnowExact != value))
				{
					this.OnisDontKnowExactChanging(value);
					this.SendPropertyChanging();
					this._isDontKnowExact = value;
					this.SendPropertyChanged("isDontKnowExact");
					this.OnisDontKnowExactChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_ComositeIndexToIndex", Storage="_ComositeIndexToIndexes", ThisKey="Id", OtherKey="IdIndex")]
		public EntitySet<ComositeIndexToIndex> ComositeIndexToIndexes
		{
			get
			{
				return this._ComositeIndexToIndexes;
			}
			set
			{
				this._ComositeIndexToIndexes.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Index", Storage="_Indexes", ThisKey="Id", OtherKey="ParentId")]
		public EntitySet<Index> Indexes
		{
			get
			{
				return this._Indexes;
			}
			set
			{
				this._Indexes.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Reference", Storage="_References", ThisKey="Id", OtherKey="FromId")]
		public EntitySet<Reference> References
		{
			get
			{
				return this._References;
			}
			set
			{
				this._References.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Reference1", Storage="_References1", ThisKey="Id", OtherKey="ToId")]
		public EntitySet<Reference> References1
		{
			get
			{
				return this._References1;
			}
			set
			{
				this._References1.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Index", Storage="_Index1", ThisKey="ParentId", OtherKey="Id", IsForeignKey=true)]
		public Index Index1
		{
			get
			{
				return this._Index1.Entity;
			}
			set
			{
				Index previousValue = this._Index1.Entity;
				if (((previousValue != value) 
							|| (this._Index1.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Index1.Entity = null;
						previousValue.Indexes.Remove(this);
					}
					this._Index1.Entity = value;
					if ((value != null))
					{
						value.Indexes.Add(this);
						this._ParentId = value.Id;
					}
					else
					{
						this._ParentId = default(Nullable<int>);
					}
					this.SendPropertyChanged("Index1");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_ComositeIndexToIndexes(ComositeIndexToIndex entity)
		{
			this.SendPropertyChanging();
			entity.Index = this;
		}
		
		private void detach_ComositeIndexToIndexes(ComositeIndexToIndex entity)
		{
			this.SendPropertyChanging();
			entity.Index = null;
		}
		
		private void attach_Indexes(Index entity)
		{
			this.SendPropertyChanging();
			entity.Index1 = this;
		}
		
		private void detach_Indexes(Index entity)
		{
			this.SendPropertyChanging();
			entity.Index1 = null;
		}
		
		private void attach_References(Reference entity)
		{
			this.SendPropertyChanging();
			entity.Index = this;
		}
		
		private void detach_References(Reference entity)
		{
			this.SendPropertyChanging();
			entity.Index = null;
		}
		
		private void attach_References1(Reference entity)
		{
			this.SendPropertyChanging();
			entity.Index1 = this;
		}
		
		private void detach_References1(Reference entity)
		{
			this.SendPropertyChanging();
			entity.Index1 = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Reference")]
	public partial class Reference : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _RefType;
		
		private int _FromId;
		
		private System.Nullable<int> _ToId;
		
		private System.Nullable<int> _ToCompIndexId;
		
		private EntityRef<Index> _Index;
		
		private EntityRef<CompositeIndex> _CompositeIndex;
		
		private EntityRef<Index> _Index1;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnRefTypeChanging(string value);
    partial void OnRefTypeChanged();
    partial void OnFromIdChanging(int value);
    partial void OnFromIdChanged();
    partial void OnToIdChanging(System.Nullable<int> value);
    partial void OnToIdChanged();
    partial void OnToCompIndexIdChanging(System.Nullable<int> value);
    partial void OnToCompIndexIdChanged();
    #endregion
		
		public Reference()
		{
			this._Index = default(EntityRef<Index>);
			this._CompositeIndex = default(EntityRef<CompositeIndex>);
			this._Index1 = default(EntityRef<Index>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_RefType", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string RefType
		{
			get
			{
				return this._RefType;
			}
			set
			{
				if ((this._RefType != value))
				{
					this.OnRefTypeChanging(value);
					this.SendPropertyChanging();
					this._RefType = value;
					this.SendPropertyChanged("RefType");
					this.OnRefTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FromId", DbType="Int NOT NULL")]
		public int FromId
		{
			get
			{
				return this._FromId;
			}
			set
			{
				if ((this._FromId != value))
				{
					if (this._Index.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnFromIdChanging(value);
					this.SendPropertyChanging();
					this._FromId = value;
					this.SendPropertyChanged("FromId");
					this.OnFromIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ToId", DbType="Int")]
		public System.Nullable<int> ToId
		{
			get
			{
				return this._ToId;
			}
			set
			{
				if ((this._ToId != value))
				{
					if (this._Index1.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnToIdChanging(value);
					this.SendPropertyChanging();
					this._ToId = value;
					this.SendPropertyChanged("ToId");
					this.OnToIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ToCompIndexId", DbType="Int")]
		public System.Nullable<int> ToCompIndexId
		{
			get
			{
				return this._ToCompIndexId;
			}
			set
			{
				if ((this._ToCompIndexId != value))
				{
					if (this._CompositeIndex.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnToCompIndexIdChanging(value);
					this.SendPropertyChanging();
					this._ToCompIndexId = value;
					this.SendPropertyChanged("ToCompIndexId");
					this.OnToCompIndexIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Reference", Storage="_Index", ThisKey="FromId", OtherKey="Id", IsForeignKey=true)]
		public Index Index
		{
			get
			{
				return this._Index.Entity;
			}
			set
			{
				Index previousValue = this._Index.Entity;
				if (((previousValue != value) 
							|| (this._Index.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Index.Entity = null;
						previousValue.References.Remove(this);
					}
					this._Index.Entity = value;
					if ((value != null))
					{
						value.References.Add(this);
						this._FromId = value.Id;
					}
					else
					{
						this._FromId = default(int);
					}
					this.SendPropertyChanged("Index");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CompositeIndex_Reference", Storage="_CompositeIndex", ThisKey="ToCompIndexId", OtherKey="Id", IsForeignKey=true)]
		public CompositeIndex CompositeIndex
		{
			get
			{
				return this._CompositeIndex.Entity;
			}
			set
			{
				CompositeIndex previousValue = this._CompositeIndex.Entity;
				if (((previousValue != value) 
							|| (this._CompositeIndex.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._CompositeIndex.Entity = null;
						previousValue.References.Remove(this);
					}
					this._CompositeIndex.Entity = value;
					if ((value != null))
					{
						value.References.Add(this);
						this._ToCompIndexId = value.Id;
					}
					else
					{
						this._ToCompIndexId = default(Nullable<int>);
					}
					this.SendPropertyChanged("CompositeIndex");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Index_Reference1", Storage="_Index1", ThisKey="ToId", OtherKey="Id", IsForeignKey=true)]
		public Index Index1
		{
			get
			{
				return this._Index1.Entity;
			}
			set
			{
				Index previousValue = this._Index1.Entity;
				if (((previousValue != value) 
							|| (this._Index1.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Index1.Entity = null;
						previousValue.References1.Remove(this);
					}
					this._Index1.Entity = value;
					if ((value != null))
					{
						value.References1.Add(this);
						this._ToId = value.Id;
					}
					else
					{
						this._ToId = default(Nullable<int>);
					}
					this.SendPropertyChanged("Index1");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
