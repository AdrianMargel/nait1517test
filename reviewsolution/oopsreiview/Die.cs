using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace oopsreiview
{
    public class Die
    {
        private int _Side;
        private string _Color;
        private int _FaceValue;

        public int Side
        {
            get
            {
                return _Side;
            }
            set {
                if (value >= 6 && value <= 20)
                {
                    _Side = value;
                }
                else
                {
                    throw new Exception("die cannot be " + value + " sided");
                }
            }
        }
        public string Color{get; set;}

        public Die()
        {
            
        }
    }
}
