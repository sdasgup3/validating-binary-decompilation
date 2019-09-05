void leaf() {
  __asm__("cmovzl %ecx, %ebx");
  }

void main() {
  leaf();
}