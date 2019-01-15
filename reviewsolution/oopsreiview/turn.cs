using System;
using System.Collections.Generic;
using System.Text;

namespace oopsreiview
{
    class turn
    {
        private int p1Roll;
        private int p2Roll;
        private Die p1Die;
        private Die p2Die;
        turn()
        {

        }
        public bool p1Win()
        {
            return p1Roll > p2Roll;
        }
    }
}
