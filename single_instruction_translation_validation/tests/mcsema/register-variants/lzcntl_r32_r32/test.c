void leaf() {
  __asm__("lzcntl %ecx, %ebx");
  }

void main() {
  leaf();
}