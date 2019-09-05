void leaf() {
  __asm__("rorq %cl, %rbx");
  }

void main() {
  leaf();
}