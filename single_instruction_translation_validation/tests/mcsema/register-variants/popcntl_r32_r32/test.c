void leaf() {
  __asm__("popcntl %ecx, %ebx");
  }

void main() {
  leaf();
}