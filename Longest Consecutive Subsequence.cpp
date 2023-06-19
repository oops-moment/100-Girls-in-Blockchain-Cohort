class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int>unique;
        for(int i=0;i<nums.size();i++)
        {
            unique.insert(nums[i]);
        }
        int count=0;
        int finalAnswer=0;
        for(auto it : unique)
        {
            if(unique.find(it-1)==unique.end())
            {   
                int count=1;
                int element=it;
                while(unique.find(++element)!=unique.end())
                {
                    count++;
                }
                finalAnswer=max(finalAnswer,count);

            }
        }
        return finalAnswer;
    }
};
