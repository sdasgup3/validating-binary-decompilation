void leaf() {
  __asm__("tzcntl %ecx, %ebx");
  }

void main() {
  leaf();
}