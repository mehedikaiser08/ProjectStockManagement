namespace StackManagementSystemUI
{
    partial class ViewSalesForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.searchButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.fromDateComboBox = new System.Windows.Forms.ComboBox();
            this.toDateComboBox = new System.Windows.Forms.ComboBox();
            this.viewSalesDataGridView = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.viewSalesDataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // searchButton
            // 
            this.searchButton.Location = new System.Drawing.Point(368, 78);
            this.searchButton.Name = "searchButton";
            this.searchButton.Size = new System.Drawing.Size(75, 23);
            this.searchButton.TabIndex = 0;
            this.searchButton.Text = "Search";
            this.searchButton.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(183, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "From Date";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(183, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "To Date";
            // 
            // fromDateComboBox
            // 
            this.fromDateComboBox.FormattingEnabled = true;
            this.fromDateComboBox.Location = new System.Drawing.Point(264, 16);
            this.fromDateComboBox.Name = "fromDateComboBox";
            this.fromDateComboBox.Size = new System.Drawing.Size(188, 21);
            this.fromDateComboBox.TabIndex = 3;
            // 
            // toDateComboBox
            // 
            this.toDateComboBox.FormattingEnabled = true;
            this.toDateComboBox.Location = new System.Drawing.Point(264, 51);
            this.toDateComboBox.Name = "toDateComboBox";
            this.toDateComboBox.Size = new System.Drawing.Size(188, 21);
            this.toDateComboBox.TabIndex = 4;
            // 
            // viewSalesDataGridView
            // 
            this.viewSalesDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.viewSalesDataGridView.Location = new System.Drawing.Point(22, 142);
            this.viewSalesDataGridView.Name = "viewSalesDataGridView";
            this.viewSalesDataGridView.Size = new System.Drawing.Size(567, 199);
            this.viewSalesDataGridView.TabIndex = 5;
            // 
            // ViewSalesForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(613, 392);
            this.Controls.Add(this.viewSalesDataGridView);
            this.Controls.Add(this.toDateComboBox);
            this.Controls.Add(this.fromDateComboBox);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.searchButton);
            this.Name = "ViewSalesForm";
            this.Text = "View Sales Between Two Dates";
            ((System.ComponentModel.ISupportInitialize)(this.viewSalesDataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button searchButton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox fromDateComboBox;
        private System.Windows.Forms.ComboBox toDateComboBox;
        private System.Windows.Forms.DataGridView viewSalesDataGridView;
    }
}